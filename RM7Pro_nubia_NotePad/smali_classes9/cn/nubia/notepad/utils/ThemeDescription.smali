.class public Lcn/nubia/notepad/utils/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# static fields
.field private static mThemeDescription:Lcn/nubia/notepad/utils/ThemeDescription;


# instance fields
.field private final DEFAULT_THEME_ENG_NAME:Ljava/lang/String;

.field private final DEFAULT_THEME_TYPE:Ljava/lang/String;

.field private final THEME_DESC_FILE:Ljava/lang/String;

.field private final THEME_TITLE:Ljava/lang/String;

.field private final THEME_TYPE:Ljava/lang/String;

.field private curThemeTitle:Ljava/lang/String;

.field private curThemeType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "themeType"

    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->THEME_TYPE:Ljava/lang/String;

    .line 13
    const-string v0, "title"

    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->THEME_TITLE:Ljava/lang/String;

    .line 14
    const-string v0, "default"

    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->DEFAULT_THEME_TYPE:Ljava/lang/String;

    .line 15
    const-string v0, "nubia theme"

    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->DEFAULT_THEME_ENG_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "data/theme/current/description.xml"

    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->THEME_DESC_FILE:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/notepad/utils/ThemeDescription;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcn/nubia/notepad/utils/ThemeDescription;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/notepad/utils/ThemeDescription;->mThemeDescription:Lcn/nubia/notepad/utils/ThemeDescription;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcn/nubia/notepad/utils/ThemeDescription;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/ThemeDescription;-><init>()V

    sput-object v0, Lcn/nubia/notepad/utils/ThemeDescription;->mThemeDescription:Lcn/nubia/notepad/utils/ThemeDescription;

    .line 28
    :cond_0
    sget-object v0, Lcn/nubia/notepad/utils/ThemeDescription;->mThemeDescription:Lcn/nubia/notepad/utils/ThemeDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getThemeTypeInfo()V
    .locals 4

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "data/theme/current/description.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v1    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v2}, Lcn/nubia/notepad/utils/ThemeDescription;->parseXML(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    if-eqz v2, :cond_2

    .line 98
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    const/4 v1, 0x0

    .line 105
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 101
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 104
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    if-eqz v1, :cond_0

    .line 98
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 99
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    :catch_2
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 97
    :goto_2
    if-eqz v1, :cond_1

    .line 98
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 99
    const/4 v1, 0x0

    .line 104
    :cond_1
    :goto_3
    throw v3

    .line 101
    :catch_3
    move-exception v0

    .line 102
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_2

    .line 93
    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_1

    .end local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private parseXML(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 33
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "UTF-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 36
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 52
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 41
    :pswitch_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "themeType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 43
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeType:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 46
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeTitle:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_2
    return-void

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeTitle:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public getThemeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcn/nubia/notepad/utils/ThemeDescription;->getThemeTypeInfo()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcn/nubia/notepad/utils/ThemeDescription;->getThemeTypeInfo()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeType:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultTheme()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0}, Lcn/nubia/notepad/utils/ThemeDescription;->getThemeTypeInfo()V

    .line 58
    iget-object v1, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeType:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcn/nubia/notepad/utils/ThemeDescription;->curThemeTitle:Ljava/lang/String;

    const-string v2, "nubia theme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
