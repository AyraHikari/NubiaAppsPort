.class public abstract Lb/a/b/c/b/a;
.super Landroid/support/v7/widget/RecyclerView$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/a$b;,
        Lb/a/b/c/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$f<",
        "Lcn/nubia/video/list/ui/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:Lb/a/b/c/b/f;

.field protected d:Lb/a/b/c/b/a$a;

.field protected e:Lb/a/b/c/b/a$b;

.field protected f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/b/c/b/a;->d:Lb/a/b/c/b/a$a;

    .line 3
    iput-object v0, p0, Lb/a/b/c/b/a;->e:Lb/a/b/c/b/a$b;

    .line 4
    iput-object p1, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lb/a/b/c/b/f;->J()I

    move-result v0

    return v0
.end method

.method public r(Lb/a/b/c/b/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/a;->d:Lb/a/b/c/b/a$a;

    return-void
.end method

.method public s(Lb/a/b/c/b/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/a;->e:Lb/a/b/c/b/a$b;

    return-void
.end method
