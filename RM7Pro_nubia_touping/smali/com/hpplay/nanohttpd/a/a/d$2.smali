.class Lcom/hpplay/nanohttpd/a/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/nanohttpd/a/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/nanohttpd/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/nanohttpd/a/a/d;


# direct methods
.method constructor <init>(Lcom/hpplay/nanohttpd/a/a/d;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/hpplay/nanohttpd/a/a/d$2;->a:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 641
    const-string v0, "NanoHTTPD"

    const-string v1, "server is started"

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    const-string v0, "NanoHTTPD"

    const-string v1, "server is stoped"

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d$2;->a:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/d;->k()V

    .line 648
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d$2;->a:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-static {v0, v2}, Lcom/hpplay/nanohttpd/a/a/d;->a(Lcom/hpplay/nanohttpd/a/a/d;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 649
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/d$2;->a:Lcom/hpplay/nanohttpd/a/a/d;

    invoke-static {v0, v2}, Lcom/hpplay/nanohttpd/a/a/d;->a(Lcom/hpplay/nanohttpd/a/a/d;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 650
    const-string v0, "NanoHTTPD"

    const-string v1, "clear obj"

    invoke-static {v0, v1}, Lcom/hpplay/nanohttpd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method
