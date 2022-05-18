.class final Lcom/loc/l$c;
.super Lcom/loc/ar;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/t;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/loc/ar;-><init>(Landroid/content/Context;Lcom/loc/t;)V

    iput-object p3, p0, Lcom/loc/l$c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/l$c;->g:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/loc/l$c;->h:Z

    iput-object p4, p0, Lcom/loc/l$c;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/l$c;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/loc/l$c;->k:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/l$c;->h:Z

    return v0
.end method

.method public final a_()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/l$c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "host"

    iget-object v2, p0, Lcom/loc/l$c;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/loc/l$c;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "https://restsdk.amap.com/v3/iasdkauth"

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/loc/l$c;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "restsdk.amap.com"

    iget-object v2, p0, Lcom/loc/l$c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "http://restsdk.amap.com/v3/iasdkauth"

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/l$c;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "https://restsdk.amap.com/v3/iasdkauth"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/loc/l$c;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "restsdk.amap.com"

    iget-object v2, p0, Lcom/loc/l$c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    const-string v0, "http://restsdk.amap.com/v3/iasdkauth"

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dualstack-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final f()[B
    .locals 5

    iget-object v0, p0, Lcom/loc/l$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "authkey"

    iget-object v1, p0, Lcom/loc/l$c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_0
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plattype"

    const-string v3, "android"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    iget-object v3, p0, Lcom/loc/l$c;->b:Lcom/loc/t;

    invoke-virtual {v3}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    iget-object v3, p0, Lcom/loc/l$c;->b:Lcom/loc/t;

    invoke-virtual {v3}, Lcom/loc/t;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "output"

    const-string v3, "json"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidversion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "manufacture"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/loc/l$c;->g:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/l$c;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/l$c;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/l$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "abitype"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ext"

    iget-object v1, p0, Lcom/loc/l$c;->b:Lcom/loc/t;

    invoke-virtual {v1}, Lcom/loc/t;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/loc/u;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/loc/l$c;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/l$c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/l$c;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/loc/ar;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
