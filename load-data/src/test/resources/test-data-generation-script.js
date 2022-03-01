[
  '{{repeat(0, 100)}}',
  {
    datasetId: '{{index()}}',
    client: function (tags) {
      var clients = ['acme', 'google', 'apple', 'microsoft'];
      return clients[tags.integer(0, clients.length - 1)];
    },
    vendor:  function (tags) {
      var vendors = ['Air France', 'American Airlines', 'Delta', 'Shouth West Airlines'];
      return vendors[tags.integer(0, vendors.length - 1)];
    },
    invoiceCode: '{{objectId()}}',
    description: 'Flight',
    fiscalYear: '{{random("2018", "2019", "2020", "2021", "2022")}}',
    currency: '{{random("euro", "dollar", "libra", "yen", "bitcoin", "ethereum")}}',
    spend: '{{floating(-10000, 10000)}}',
    userName: '{{firstName()}} {{surname()}}',
    timestamp: function (tags) {
      var timestamps = ['20190101', '20190213', '20190330', '20190418', '20190515', '20190630', '20190713', '20190825', '20190930', '20191012', '20191123', '20191231', '20200101', '20200213', '20200330', '20200418', '20200515', '20200630', '20200713', '20200825', '20200930', '20201012', '20201123', '20201231', '20220717'];
      return timestamps[tags.integer(0, timestamps.length - 1)];
    }, 
    defaultCategory: function (tags) {
      var categories = ['Professional Services', 'Financial Consulting', 'Human Resources', 'Advertising', 'Print', 'Radio & TV', 'Public Relations'];
      return categories[tags.integer(0, categories.length - 1)];
    }
  }
]