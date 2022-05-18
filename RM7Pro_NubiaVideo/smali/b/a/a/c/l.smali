.class public final Lb/a/a/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lb/a/a/c/l;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/c/l;->a:I

    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, Lb/a/a/c/l;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/c/l;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lb/a/a/c/l;->a:I

    return-void
.end method
