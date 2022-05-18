.class public Lcn/nubia/gallery3d/util/RangeBoolArray;
.super Ljava/lang/Object;
.source "RangeBoolArray.java"


# instance fields
.field private mData:[Z

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 25
    new-array p2, p2, [Z

    iput-object p2, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mData:[Z

    .line 26
    iput p1, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mOffset:I

    return-void
.end method

.method public constructor <init>([ZII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mData:[Z

    .line 32
    iput p2, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mOffset:I

    return-void
.end method


# virtual methods
.method public get(I)Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mData:[Z

    iget v1, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mOffset:I

    sub-int/2addr p1, v1

    aget-boolean p1, v0, p1

    return p1
.end method

.method public indexOf(Z)I
    .locals 3

    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mData:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 45
    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mOffset:I

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public put(IZ)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mData:[Z

    iget v1, p0, Lcn/nubia/gallery3d/util/RangeBoolArray;->mOffset:I

    sub-int/2addr p1, v1

    aput-boolean p2, v0, p1

    return-void
.end method
