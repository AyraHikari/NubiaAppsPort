.class public Lcn/nubia/collage/o/a/m;
.super Lcn/nubia/collage/o/a/d;
.source ""


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/c;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/nubia/collage/o/a/m;-><init>(Lcn/nubia/collage/o/a/c;I)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/collage/o/a/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/o/a/d;-><init>(Lcn/nubia/collage/o/a/c;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/collage/o/a/m;->c:I

    return-void
.end method


# virtual methods
.method public f()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/m;->c:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcn/nubia/collage/o/a/m;->c:I

    return-void
.end method
