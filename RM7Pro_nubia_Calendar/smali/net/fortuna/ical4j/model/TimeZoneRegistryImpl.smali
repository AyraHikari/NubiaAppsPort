.class public Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;
.super Ljava/lang/Object;
.source "TimeZoneRegistryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/TimeZoneRegistry;


# static fields
.field private static final ALIASES:Ljava/util/Properties;

.field private static final DEFAULT_RESOURCE_PREFIX:Ljava/lang/String; = "zoneinfo/"

.field private static final DEFAULT_TIMEZONES:Ljava/util/Map;

.field private static final TZ_ID_SUFFIX:Ljava/util/regex/Pattern;

.field private static final UPDATE_ENABLED:Ljava/lang/String; = "net.fortuna.ical4j.timezone.update.enabled"


# instance fields
.field private resourcePrefix:Ljava/lang/String;

.field private timezones:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    const-string v1, "(?<=/)[^/]*/[^/]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->TZ_ID_SUFFIX:Ljava/util/regex/Pattern;

    .line 71
    new-instance v1, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    .line 76
    :try_start_0
    sget-object v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    const-string v2, "net/fortuna/ical4j/model/tz.alias"

    invoke-static {v2}, Lnet/fortuna/ical4j/util/ResourceLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 78
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 79
    .restart local v0    # "ioe":Ljava/io/IOException;
    const-class v1, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading timezone aliases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "zoneinfo/"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourcePrefix"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->resourcePrefix:Ljava/lang/String;

    .line 101
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    .line 102
    return-void
.end method

.method private loadVTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/fortuna/ical4j/data/ParserException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->resourcePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ics"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/fortuna/ical4j/util/ResourceLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 183
    .local v2, "resource":Ljava/net/URL;
    if-eqz v2, :cond_1

    .line 184
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 185
    .local v0, "builder":Lnet/fortuna/ical4j/data/CalendarBuilder;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v1

    .line 186
    .local v1, "calendar":Lnet/fortuna/ical4j/model/Calendar;
    const-string v4, "VTIMEZONE"

    invoke-virtual {v1, v4}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v3

    check-cast v3, Lnet/fortuna/ical4j/model/component/VTimeZone;

    .line 188
    .local v3, "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    const-string v4, "false"

    const-string v5, "net.fortuna.ical4j.timezone.update.enabled"

    invoke-static {v5}, Lnet/fortuna/ical4j/util/Configurator;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    invoke-direct {p0, v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->updateDefinition(Lnet/fortuna/ical4j/model/component/VTimeZone;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v3

    .line 193
    .end local v0    # "builder":Lnet/fortuna/ical4j/data/CalendarBuilder;
    .end local v1    # "calendar":Lnet/fortuna/ical4j/model/Calendar;
    .end local v3    # "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateDefinition(Lnet/fortuna/ical4j/model/component/VTimeZone;)Lnet/fortuna/ical4j/model/component/VTimeZone;
    .locals 8
    .param p1, "vTimeZone"    # Lnet/fortuna/ical4j/model/component/VTimeZone;

    .prologue
    .line 201
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getTimeZoneUrl()Lnet/fortuna/ical4j/model/property/TzUrl;

    move-result-object v4

    .line 202
    .local v4, "tzUrl":Lnet/fortuna/ical4j/model/property/TzUrl;
    if-eqz v4, :cond_0

    .line 204
    :try_start_0
    new-instance v0, Lnet/fortuna/ical4j/data/CalendarBuilder;

    invoke-direct {v0}, Lnet/fortuna/ical4j/data/CalendarBuilder;-><init>()V

    .line 205
    .local v0, "builder":Lnet/fortuna/ical4j/data/CalendarBuilder;
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/TzUrl;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/fortuna/ical4j/data/CalendarBuilder;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v1

    .line 206
    .local v1, "calendar":Lnet/fortuna/ical4j/model/Calendar;
    const-string v6, "VTIMEZONE"

    invoke-virtual {v1, v6}, Lnet/fortuna/ical4j/model/Calendar;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v5

    check-cast v5, Lnet/fortuna/ical4j/model/component/VTimeZone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .local v5, "updatedVTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    if-eqz v5, :cond_0

    .line 216
    .end local v0    # "builder":Lnet/fortuna/ical4j/data/CalendarBuilder;
    .end local v1    # "calendar":Lnet/fortuna/ical4j/model/Calendar;
    .end local v5    # "updatedVTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    :goto_0
    return-object v5

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    const-class v6, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 213
    .local v3, "log":Lorg/apache/commons/logging/Log;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to retrieve updates for timezone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VTimeZone;->getTimeZoneId()Lnet/fortuna/ical4j/model/property/TzId;

    move-result-object v7

    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/TzId;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "log":Lorg/apache/commons/logging/Log;
    :cond_0
    move-object v5, p1

    .line 216
    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    return-void
.end method

.method public final getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v8, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/fortuna/ical4j/model/TimeZone;

    .line 137
    .local v5, "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    if-nez v5, :cond_2

    .line 138
    sget-object v8, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    check-cast v5, Lnet/fortuna/ical4j/model/TimeZone;

    .line 139
    .restart local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    if-nez v5, :cond_2

    .line 141
    sget-object v8, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->ALIASES:Ljava/util/Properties;

    invoke-virtual {v8, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "alias":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v8

    .line 175
    .end local v1    # "alias":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 146
    .restart local v1    # "alias":Ljava/lang/String;
    :cond_0
    sget-object v9, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    monitor-enter v9

    .line 148
    :try_start_0
    sget-object v8, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lnet/fortuna/ical4j/model/TimeZone;

    move-object v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-nez v5, :cond_1

    .line 151
    :try_start_1
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->loadVTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v7

    .line 152
    .local v7, "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    if-eqz v7, :cond_3

    .line 155
    new-instance v6, Lnet/fortuna/ical4j/model/TimeZone;

    invoke-direct {v6, v7}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .local v6, "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    :try_start_2
    sget-object v8, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->DEFAULT_TIMEZONES:Ljava/util/Map;

    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v6

    .line 171
    .end local v6    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .end local v7    # "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    .restart local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "alias":Ljava/lang/String;
    :cond_2
    move-object v8, v5

    .line 175
    goto :goto_0

    .line 158
    .restart local v1    # "alias":Ljava/lang/String;
    .restart local v7    # "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    :cond_3
    :try_start_4
    const-string v8, "ical4j.parsing.relaxed"

    invoke-static {v8}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 160
    sget-object v8, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->TZ_ID_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 161
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->getTimeZone(Ljava/lang/String;)Lnet/fortuna/ical4j/model/TimeZone;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    :try_start_5
    monitor-exit v9

    goto :goto_0

    .line 171
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    :catchall_0
    move-exception v8

    :goto_2
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-class v8, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v3

    .line 168
    .local v3, "log":Lorg/apache/commons/logging/Log;
    const-string v8, "Error occurred loading VTimeZone"

    invoke-interface {v3, v8, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "log":Lorg/apache/commons/logging/Log;
    .end local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .restart local v6    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .restart local v7    # "vTimeZone":Lnet/fortuna/ical4j/model/component/VTimeZone;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .restart local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    goto :goto_2

    .line 166
    .end local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .restart local v6    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    .restart local v5    # "timezone":Lnet/fortuna/ical4j/model/TimeZone;
    goto :goto_3
.end method

.method public final register(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->register(Lnet/fortuna/ical4j/model/TimeZone;Z)V

    .line 110
    return-void
.end method

.method public final register(Lnet/fortuna/ical4j/model/TimeZone;Z)V
    .locals 4
    .param p1, "timezone"    # Lnet/fortuna/ical4j/model/TimeZone;
    .param p2, "update"    # Z

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/fortuna/ical4j/model/TimeZone;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getVTimeZone()Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v3

    invoke-direct {p0, v3}, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->updateDefinition(Lnet/fortuna/ical4j/model/component/VTimeZone;)Lnet/fortuna/ical4j/model/component/VTimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/fortuna/ical4j/model/TimeZone;-><init>(Lnet/fortuna/ical4j/model/component/VTimeZone;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneRegistryImpl;->timezones:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
