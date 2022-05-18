.class public Lcn/nubia/calendar/HolidaySaxParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "HolidaySaxParserHandler.java"


# instance fields
.field private mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
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
    .line 26
    iget-object v1, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mTagName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 28
    .local v0, "data":Ljava/lang/String;
    const-string v1, "year"

    iget-object v2, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/HolidayDate;->setYear(I)V

    .line 34
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local v0    # "data":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mTagName:Ljava/lang/String;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/model/HolidayDate;->add(Ljava/lang/String;)V

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
    .line 39
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
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mTagName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public getHolidayDate()Lcn/nubia/calendar/model/HolidayDate;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

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
    .line 49
    new-instance v0, Lcn/nubia/calendar/model/HolidayDate;

    invoke-direct {v0}, Lcn/nubia/calendar/model/HolidayDate;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mHolidayDate:Lcn/nubia/calendar/model/HolidayDate;

    .line 50
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
    .line 55
    iput-object p3, p0, Lcn/nubia/calendar/HolidaySaxParserHandler;->mTagName:Ljava/lang/String;

    .line 56
    return-void
.end method
