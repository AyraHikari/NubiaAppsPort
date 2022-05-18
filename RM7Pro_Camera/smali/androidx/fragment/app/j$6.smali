.class Landroidx/fragment/app/j$6;
.super Landroidx/fragment/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/j;->c()Landroidx/fragment/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/j;


# direct methods
.method constructor <init>(Landroidx/fragment/app/j;)V
    .locals 0

    .line 2845
    iput-object p1, p0, Landroidx/fragment/app/j$6;->a:Landroidx/fragment/app/j;

    invoke-direct {p0}, Landroidx/fragment/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 2

    .line 2851
    iget-object p1, p0, Landroidx/fragment/app/j$6;->a:Landroidx/fragment/app/j;

    iget-object p1, p1, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iget-object v0, p0, Landroidx/fragment/app/j$6;->a:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroidx/fragment/app/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/c;

    move-result-object p1

    return-object p1
.end method
