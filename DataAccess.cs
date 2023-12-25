using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using WebAppAssignment_11;

namespace YourNamespace
{
    public class DataAccess
    {
        private readonly string connectionString;

        public DataAccess(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<Article> GetArticles()
        {
            List<Article> articles = new List<Article>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand command = new SqlCommand("SELECT * FROM Articles", connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Article article = new Article
                                {
                                    ArticleId = Convert.ToInt32(reader["ArticleId"]),
                                    Title = reader["Title"].ToString(),
                                    Content = reader["Content"].ToString(),
                                    PublishDate = Convert.ToDateTime(reader["PublishDate"])
                                };

                                articles.Add(article);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception here
                Console.WriteLine($"Error retrieving articles: {ex.Message}");
                // You might want to throw the exception or handle it depending on your application requirements.
            }

            return articles;
        }
    }
}
