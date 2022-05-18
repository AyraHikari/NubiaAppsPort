.class public Lcn/nubia/calendar/util/ParseXml;
.super Ljava/lang/Object;
.source "ParseXml.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParseXml"

.field public static final URL_HOLIDAY:Ljava/lang/String; = "https://platform.server.nubia.cn/workDate/getHoliday.action"

.field public static final URL_WEEKEND_WORK:Ljava/lang/String; = "https://platform.server.nubia.cn/workDate/getWorkDate.action"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseWeekendWork(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 71
    const-string v8, "ParseXml"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseWeekendWork:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "conn":Ljava/net/HttpURLConnection;
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

    .line 75
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 76
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 77
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 81
    .local v3, "inStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 82
    .local v5, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 83
    new-instance v4, Lcn/nubia/calendar/WeekendWorkSaxParserHandler;

    invoke-direct {v4}, Lcn/nubia/calendar/WeekendWorkSaxParserHandler;-><init>()V

    .line 86
    .local v4, "parseXml":Lcn/nubia/calendar/WeekendWorkSaxParserHandler;
    invoke-virtual {v5, v3, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 87
    invoke-virtual {v4}, Lcn/nubia/calendar/WeekendWorkSaxParserHandler;->getWeekendWorkDate()Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v7

    .line 89
    .local v7, "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    invoke-virtual {v7, p0, p1}, Lcn/nubia/calendar/model/WeekendWorkDate;->write(Landroid/content/Context;I)V

    .line 90
    if-eqz v7, :cond_0

    .line 91
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    const/4 v1, 0x0

    .line 105
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "parseXml":Lcn/nubia/calendar/WeekendWorkSaxParserHandler;
    .end local v5    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :cond_1
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "TAG"

    const-string v9, "Exception occur"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 101
    const/4 v1, 0x0

    .line 103
    :cond_2
    throw v8
.end method

.method public static parseWeekendWork(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "holidayDownload"    # Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    .prologue
    .line 161
    const-string v14, "ParseXml"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parseWeekendWork2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x0

    .line 163
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 165
    .local v9, "isSucess":Z
    :try_start_0
    new-instance v12, Ljava/net/URL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://platform.server.nubia.cn/workDate/getWorkDate.action?year="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 167
    const/16 v14, 0x1388

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 168
    const-string v14, "GET"

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_4

    const/4 v9, 0x1

    .line 170
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 173
    .local v8, "inStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 174
    .local v11, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v11

    .line 175
    new-instance v10, Lcn/nubia/calendar/WeekendWorkSaxParserHandler;

    invoke-direct {v10}, Lcn/nubia/calendar/WeekendWorkSaxParserHandler;-><init>()V

    .line 178
    .local v10, "parseXml":Lcn/nubia/calendar/WeekendWorkSaxParserHandler;
    invoke-virtual {v11, v8, v10}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 179
    invoke-virtual {v10}, Lcn/nubia/calendar/WeekendWorkSaxParserHandler;->getWeekendWorkDate()Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v13

    .line 181
    .local v13, "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Lcn/nubia/calendar/model/WeekendWorkDate;->write(Landroid/content/Context;I)V

    .line 182
    if-eqz v13, :cond_0

    .line 183
    if-eqz v8, :cond_0

    .line 184
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 187
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 188
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 189
    .local v6, "current_year":I
    move/from16 v0, p1

    if-ne v6, v0, :cond_5

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 191
    .local v4, "currentTime":J
    const-string v14, "lastrequestcurrenttimeWeekendOnWorkList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v4    # "currentTime":J
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    const/4 v3, 0x0

    .line 204
    :cond_2
    if-eqz v9, :cond_3

    .line 205
    invoke-interface/range {p2 .. p2}, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;->onHolidayDownloadSuceess()V

    .line 208
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v6    # "current_year":I
    .end local v8    # "inStream":Ljava/io/InputStream;
    .end local v10    # "parseXml":Lcn/nubia/calendar/WeekendWorkSaxParserHandler;
    .end local v11    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :cond_3
    :goto_2
    return-void

    .line 169
    .restart local v12    # "url":Ljava/net/URL;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 192
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "current_year":I
    .restart local v8    # "inStream":Ljava/io/InputStream;
    .restart local v10    # "parseXml":Lcn/nubia/calendar/WeekendWorkSaxParserHandler;
    .restart local v11    # "parser":Ljavax/xml/parsers/SAXParser;
    .restart local v13    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :cond_5
    add-int/lit8 v14, v6, 0x1

    move/from16 v0, p1

    if-ne v14, v0, :cond_1

    .line 193
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 194
    .restart local v4    # "currentTime":J
    const-string v14, "lastrequestnexttimeWeekendOnWorkList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 196
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "currentTime":J
    .end local v6    # "current_year":I
    .end local v8    # "inStream":Ljava/io/InputStream;
    .end local v10    # "parseXml":Lcn/nubia/calendar/WeekendWorkSaxParserHandler;
    .end local v11    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :catch_0
    move-exception v7

    .line 197
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v14, "TAG"

    const-string v15, "Exception occur"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    if-eqz v3, :cond_6

    .line 201
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    const/4 v3, 0x0

    .line 204
    :cond_6
    if-eqz v9, :cond_3

    .line 205
    invoke-interface/range {p2 .. p2}, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;->onHolidayDownloadSuceess()V

    goto :goto_2

    .line 200
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v3, :cond_7

    .line 201
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    const/4 v3, 0x0

    .line 204
    :cond_7
    if-eqz v9, :cond_8

    .line 205
    invoke-interface/range {p2 .. p2}, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;->onHolidayDownloadSuceess()V

    .line 207
    :cond_8
    throw v14
.end method

.method public static parseXml(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 34
    const-string v8, "ParseXml"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseXml:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    .line 37
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

    .line 38
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 39
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 40
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 44
    .local v4, "inStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 45
    .local v6, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 46
    new-instance v5, Lcn/nubia/calendar/HolidaySaxParserHandler;

    invoke-direct {v5}, Lcn/nubia/calendar/HolidaySaxParserHandler;-><init>()V

    .line 49
    .local v5, "parseXml":Lcn/nubia/calendar/HolidaySaxParserHandler;
    invoke-virtual {v6, v4, v5}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 50
    invoke-virtual {v5}, Lcn/nubia/calendar/HolidaySaxParserHandler;->getHolidayDate()Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v3

    .line 52
    .local v3, "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    invoke-virtual {v3, p0, p1}, Lcn/nubia/calendar/model/HolidayDate;->write(Landroid/content/Context;I)V

    .line 53
    if-eqz v3, :cond_0

    .line 54
    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    const/4 v1, 0x0

    .line 68
    .end local v3    # "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v4    # "inStream":Ljava/io/InputStream;
    .end local v5    # "parseXml":Lcn/nubia/calendar/HolidaySaxParserHandler;
    .end local v6    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "TAG"

    const-string v9, "Exception occur"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    const/4 v1, 0x0

    .line 67
    :cond_2
    throw v8
.end method

.method public static parseXml(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "holidayDownload"    # Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    .prologue
    .line 109
    const-string v14, "ParseXml"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "parseXml2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 113
    .local v10, "isSucess":Z
    :try_start_0
    new-instance v13, Ljava/net/URL;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://platform.server.nubia.cn/workDate/getHoliday.action?year="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 115
    const/16 v14, 0x1388

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    const-string v14, "GET"

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_4

    const/4 v10, 0x1

    .line 118
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 121
    .local v9, "inStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 122
    .local v12, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v12

    .line 123
    new-instance v11, Lcn/nubia/calendar/HolidaySaxParserHandler;

    invoke-direct {v11}, Lcn/nubia/calendar/HolidaySaxParserHandler;-><init>()V

    .line 126
    .local v11, "parseXml":Lcn/nubia/calendar/HolidaySaxParserHandler;
    invoke-virtual {v12, v9, v11}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 127
    invoke-virtual {v11}, Lcn/nubia/calendar/HolidaySaxParserHandler;->getHolidayDate()Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v8

    .line 129
    .local v8, "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lcn/nubia/calendar/model/HolidayDate;->write(Landroid/content/Context;I)V

    .line 130
    if-eqz v8, :cond_0

    .line 131
    if-eqz v9, :cond_0

    .line 132
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 136
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 137
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 138
    .local v6, "current_year":I
    move/from16 v0, p1

    if-ne v6, v0, :cond_5

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 140
    .local v4, "currentTime":J
    const-string v14, "lastrequestcurrenttimeChineseHolidat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v4    # "currentTime":J
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const/4 v3, 0x0

    .line 153
    :cond_2
    if-eqz v10, :cond_3

    .line 154
    invoke-interface/range {p2 .. p2}, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;->onHolidayDownloadSuceess()V

    .line 158
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v6    # "current_year":I
    .end local v8    # "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v9    # "inStream":Ljava/io/InputStream;
    .end local v11    # "parseXml":Lcn/nubia/calendar/HolidaySaxParserHandler;
    .end local v12    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v13    # "url":Ljava/net/URL;
    :cond_3
    :goto_2
    return-void

    .line 117
    .restart local v13    # "url":Ljava/net/URL;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 141
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "current_year":I
    .restart local v8    # "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .restart local v9    # "inStream":Ljava/io/InputStream;
    .restart local v11    # "parseXml":Lcn/nubia/calendar/HolidaySaxParserHandler;
    .restart local v12    # "parser":Ljavax/xml/parsers/SAXParser;
    :cond_5
    add-int/lit8 v14, v6, 0x1

    move/from16 v0, p1

    if-ne v14, v0, :cond_1

    .line 142
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 143
    .restart local v4    # "currentTime":J
    const-string v14, "lastrequestnexttimeChineseHolidat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 145
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "currentTime":J
    .end local v6    # "current_year":I
    .end local v8    # "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v9    # "inStream":Ljava/io/InputStream;
    .end local v11    # "parseXml":Lcn/nubia/calendar/HolidaySaxParserHandler;
    .end local v12    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 146
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v14, "TAG"

    const-string v15, "Exception occur"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-eqz v3, :cond_6

    .line 150
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const/4 v3, 0x0

    .line 153
    :cond_6
    if-eqz v10, :cond_3

    .line 154
    invoke-interface/range {p2 .. p2}, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;->onHolidayDownloadSuceess()V

    goto :goto_2

    .line 149
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    if-eqz v3, :cond_7

    .line 150
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    const/4 v3, 0x0

    .line 153
    :cond_7
    if-eqz v10, :cond_8

    .line 154
    invoke-interface/range {p2 .. p2}, Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;->onHolidayDownloadSuceess()V

    .line 157
    :cond_8
    throw v14
.end method
