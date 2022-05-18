.class public Lcn/nubia/gallery3d/data/Face;
.super Ljava/lang/Object;
.source "Face.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcn/nubia/gallery3d/data/Face;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mPersonId:Ljava/lang/String;

.field private mPosition:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/data/Face;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcn/nubia/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 34
    new-instance p1, Ljava/util/StringTokenizer;

    invoke-direct {p1, p3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    .line 36
    :goto_1
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 37
    iget-object p2, p0, Lcn/nubia/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 38
    iget-object p2, p0, Lcn/nubia/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 39
    iget-object p2, p0, Lcn/nubia/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 40
    iget-object p2, p0, Lcn/nubia/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcn/nubia/gallery3d/data/Face;)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Face;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/Face;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcn/nubia/gallery3d/data/Face;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/Face;->compareTo(Lcn/nubia/gallery3d/data/Face;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 54
    instance-of v0, p1, Lcn/nubia/gallery3d/data/Face;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcn/nubia/gallery3d/data/Face;

    .line 56
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/Face;->mPersonId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Face;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Landroid/graphics/Rect;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Face;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method
