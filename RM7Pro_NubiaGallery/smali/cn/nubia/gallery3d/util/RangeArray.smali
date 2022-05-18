.class public Lcn/nubia/gallery3d/util/RangeArray;
.super Ljava/lang/Object;
.source "RangeArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 25
    new-array p2, p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcn/nubia/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    .line 26
    iput p1, p0, Lcn/nubia/gallery3d/util/RangeArray;->mOffset:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    .line 31
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 34
    iput-object p1, p0, Lcn/nubia/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    .line 35
    iput p2, p0, Lcn/nubia/gallery3d/util/RangeArray;->mOffset:I

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcn/nubia/gallery3d/util/RangeArray;->mOffset:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 48
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcn/nubia/gallery3d/util/RangeArray;->mOffset:I

    add-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcn/nubia/gallery3d/util/RangeArray;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcn/nubia/gallery3d/util/RangeArray;->mOffset:I

    sub-int/2addr p1, v1

    aput-object p2, v0, p1

    return-void
.end method
