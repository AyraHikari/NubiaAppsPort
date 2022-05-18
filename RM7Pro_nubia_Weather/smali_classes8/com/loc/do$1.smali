.class final Lcom/loc/do$1;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/do;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/do;


# direct methods
.method constructor <init>(Lcom/loc/do;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/do$1;->a:Lcom/loc/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/do$1;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->d:Lcom/loc/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do$1;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->b:Lcom/loc/dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do$1;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->b:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cu;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "cl"

    const-string v2, "upwr"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
