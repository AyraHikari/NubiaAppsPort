.class public final Lcom/loc/ef;
.super Lcom/loc/ar;
.source "LocationRequest.java"


# instance fields
.field f:Ljava/util/Map;
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

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:[B

.field j:[B

.field k:Z

.field l:Ljava/lang/String;

.field m:Ljava/util/Map;
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

.field n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/t;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/loc/ar;-><init>(Landroid/content/Context;Lcom/loc/t;)V

    iput-object v1, p0, Lcom/loc/ef;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/ef;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/ef;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/ef;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/ef;->i:[B

    iput-object v1, p0, Lcom/loc/ef;->j:[B

    iput-boolean v2, p0, Lcom/loc/ef;->k:Z

    iput-object v1, p0, Lcom/loc/ef;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/ef;->m:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/loc/ef;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ef;->g:Ljava/lang/String;

    return-void
.end method

.method public final a_()[B
    .locals 1

    iget-object v0, p0, Lcom/loc/ef;->i:[B

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/loc/ef;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ef;->h:Ljava/lang/String;

    return-void
.end method

.method public final b_()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/loc/ef;->m:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ef;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/loc/ef;->o:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/loc/ef;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ef;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/loc/ef;->j:[B

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ef;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/ef;->k:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ef;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/ef;->n:Z

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const-string v0, "loc"

    return-object v0
.end method
