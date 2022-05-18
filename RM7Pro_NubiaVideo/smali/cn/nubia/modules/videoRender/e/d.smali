.class public abstract Lcn/nubia/modules/videoRender/e/d;
.super Lc/c/a/g/a;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcn/nubia/modules/videoRender/e/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/g/a;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcn/nubia/modules/videoRender/e/d;->a:I

    return-void
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/modules/videoRender/e/d;->a:I

    return v0
.end method

.method public g()Lcn/nubia/modules/videoRender/e/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/d;->b:Lcn/nubia/modules/videoRender/e/j;

    return-object v0
.end method

.method public abstract h(Landroid/content/Context;[I)V
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public j(Lcn/nubia/modules/videoRender/e/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/e/d;->b:Lcn/nubia/modules/videoRender/e/j;

    return-void
.end method

.method public k(I)V
    .locals 0

    return-void
.end method

.method public l(I)V
    .locals 0

    return-void
.end method

.method public m(I)V
    .locals 0

    return-void
.end method
