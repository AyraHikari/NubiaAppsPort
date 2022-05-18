.class public Lcn/nubia/deskclock/model/holiday/ParseXml;
.super Ljava/lang/Object;
.source "ParseXml.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeskClock:[ParseXml]"

.field public static final URL_HOLIDAY:Ljava/lang/String; = "https://platform.server.nubia.cn/workDate/getHoliday.action"

.field public static final URL_WEEKEND_WORK:Ljava/lang/String; = "https://platform.server.nubia.cn/workDate/getWorkDate.action"

.field private static mCheckHolidayData:Z

.field private static mParseXmlError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/deskclock/model/holiday/ParseXml;->mParseXmlError:Z

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/deskclock/model/holiday/ParseXml;->mCheckHolidayData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getmCheckHolidayData()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcn/nubia/deskclock/model/holiday/ParseXml;->mCheckHolidayData:Z

    return v0
.end method

.method public static getmParseXmlError()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcn/nubia/deskclock/model/holiday/ParseXml;->mParseXmlError:Z

    return v0
.end method

.method public static parseWeekendWork(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v8, "DeskClock:[ParseXml]"

    const-string v9, " [parseWeekendWork] "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://platform.server.nubia.cn/workDate/getWorkDate.action?year="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 73
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 74
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 77
    .local v3, "inStream":Ljava/io/InputStream;
    const-string v8, "DeskClock:[ParseXml]"

    const-string v9, "parseWeekendWork: start parser"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v5, 0x0

    .line 79
    .local v5, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 80
    new-instance v4, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;

    invoke-direct {v4}, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;-><init>()V

    .line 81
    .local v4, "parseXml":Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;
    invoke-virtual {v5, v3, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 82
    invoke-virtual {v4}, Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;->getWeekendWorkDate()Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    move-result-object v7

    .line 83
    .local v7, "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    const-string v8, "DeskClock:[ParseXml]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [parseWeekendWork] weekendWorkDate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v7, p0, p1}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->write(Landroid/content/Context;I)V

    .line 85
    if-eqz v7, :cond_0

    .line 86
    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    const/4 v1, 0x0

    .line 99
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "parseXml":Lcn/nubia/deskclock/model/holiday/WeekendWorkSaxParserHandler;
    .end local v5    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    :cond_1
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "DeskClock:[ParseXml]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " parseWeekendWork Exception occur "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v8, 0x1

    invoke-static {v8}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmParseXmlError(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_2

    .line 95
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    const/4 v1, 0x0

    .line 98
    :cond_2
    throw v8
.end method

.method public static parseXml(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 32
    const-string v8, "DeskClock:[ParseXml]"

    const-string v9, " [parseXml] "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://platform.server.nubia.cn/workDate/getHoliday.action?year="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 37
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 41
    .local v4, "inStream":Ljava/io/InputStream;
    const-string v8, "DeskClock:[ParseXml]"

    const-string v9, "parseXml: start parser"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 44
    new-instance v5, Lcn/nubia/deskclock/model/holiday/HolidaySaxParserHandler;

    invoke-direct {v5}, Lcn/nubia/deskclock/model/holiday/HolidaySaxParserHandler;-><init>()V

    .line 45
    .local v5, "parseXml":Lcn/nubia/deskclock/model/holiday/HolidaySaxParserHandler;
    invoke-virtual {v6, v4, v5}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 46
    invoke-virtual {v5}, Lcn/nubia/deskclock/model/holiday/HolidaySaxParserHandler;->getHolidayDate()Lcn/nubia/deskclock/model/holiday/HolidayDate;

    move-result-object v3

    .line 47
    .local v3, "holidayDate":Lcn/nubia/deskclock/model/holiday/HolidayDate;
    const-string v8, "DeskClock:[ParseXml]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [parseXml] holidayDate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/holiday/HolidayDate;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v3, p0, p1}, Lcn/nubia/deskclock/model/holiday/HolidayDate;->write(Landroid/content/Context;I)V

    .line 49
    if-eqz v3, :cond_0

    .line 50
    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 60
    const/4 v1, 0x0

    .line 64
    .end local v3    # "holidayDate":Lcn/nubia/deskclock/model/holiday/HolidayDate;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "parseXml":Lcn/nubia/deskclock/model/holiday/HolidaySaxParserHandler;
    .end local v6    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "DeskClock:[ParseXml]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " parseXml Exception occur"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v8, 0x1

    invoke-static {v8}, Lcn/nubia/deskclock/model/holiday/ParseXml;->setmParseXmlError(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 60
    const/4 v1, 0x0

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 60
    const/4 v1, 0x0

    .line 63
    :cond_2
    throw v8
.end method

.method public static setmCheckHolidayData(Z)V
    .locals 3
    .param p0, "checkHolidayData"    # Z

    .prologue
    .line 120
    const-string v0, "DeskClock:[ParseXml]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setmCheckHolidayData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sput-boolean p0, Lcn/nubia/deskclock/model/holiday/ParseXml;->mCheckHolidayData:Z

    .line 122
    return-void
.end method

.method public static setmParseXmlError(Z)V
    .locals 0
    .param p0, "isError"    # Z

    .prologue
    .line 107
    sput-boolean p0, Lcn/nubia/deskclock/model/holiday/ParseXml;->mParseXmlError:Z

    .line 108
    return-void
.end method
