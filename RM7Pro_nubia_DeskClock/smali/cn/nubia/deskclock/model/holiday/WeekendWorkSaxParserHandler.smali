.class public Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WeekendWorkSaxParserHandler.java"


# instance fields
.field private mTagName:Ljava/lang/String;

.field private mWeekendWorkDate:Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v1, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mTagName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 19
    .local v0, "data":Ljava/lang/String;
    const-string v1, "year"

    iget-object v2, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mWeekendWorkDate:Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->setYear(I)V

    .line 25
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 21
    .restart local v0    # "data":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mTagName:Ljava/lang/String;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mWeekendWorkDate:Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->add(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mTagName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public getWeekendWorkDate()Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mWeekendWorkDate:Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mWeekendWorkDate:Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    .line 41
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    iput-object p3, p0, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->mTagName:Ljava/lang/String;

    .line 47
    return-void
.end method
