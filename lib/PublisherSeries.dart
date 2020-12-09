
class PublisherSeries{
  String publisher;
  int total;

  PublisherSeries(this.publisher,this.total);
}
dynamic getColumnData(){

  List<PublisherSeries> columnData=<PublisherSeries>[
    PublisherSeries('Publisher 1', 100),
    PublisherSeries('Publisher 2', 30),
    PublisherSeries('Publisher 3', 70),
    PublisherSeries('Publisher 4', 40),
    PublisherSeries('Publisher 5', 120),
  ];
  return columnData;
}