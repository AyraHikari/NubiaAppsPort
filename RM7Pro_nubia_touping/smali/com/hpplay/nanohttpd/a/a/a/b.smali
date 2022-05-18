.class public Lcom/hpplay/nanohttpd/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/nanohttpd/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->b:Ljava/lang/String;

    .line 65
    invoke-static {p3}, Lcom/hpplay/nanohttpd/a/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->b:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 51
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 52
    const/4 v2, 0x5

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->add(II)V

    .line 53
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    const-string v0, "%s=%s; expires=%s"

    .line 76
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/hpplay/nanohttpd/a/a/a/b;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
