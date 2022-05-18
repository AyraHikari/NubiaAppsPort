.class public final Lcom/loc/br;
.super Lcom/loc/bq;
.source "WiFiUplateStrategy.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    iput-boolean v0, p0, Lcom/loc/br;->b:Z

    iput-object p1, p0, Lcom/loc/br;->a:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/loc/br;->b:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/br;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->q(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/loc/br;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
