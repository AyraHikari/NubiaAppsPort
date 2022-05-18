.class Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x10

.field private static final CACHE_SIZE_START_MOVE:I = 0x8


# instance fields
.field private mCount:I

.field private mKey:[I

.field private mValue:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 85
    iput-object v1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mKey:[I

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$1;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 127
    :goto_0
    iget v2, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mCount:I

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mCount:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget v1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mCount:I

    if-ge v0, v1, :cond_2

    .line 107
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mKey:[I

    aget v3, v2, v0

    if-ne v3, p1, :cond_1

    const/16 p1, 0x8

    if-le v1, p1, :cond_0

    if-lez v0, :cond_0

    .line 112
    aget p1, v2, v0

    add-int/lit8 v1, v0, -0x1

    .line 113
    aget v3, v2, v1

    aput v3, v2, v0

    .line 114
    aput p1, v2, v1

    .line 116
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object v2, p1, v0

    .line 117
    aget-object v3, p1, v1

    aput-object v3, p1, v0

    .line 118
    aput-object v2, p1, v1

    .line 120
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 92
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mCount:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    const/16 v1, 0xf

    aget-object v2, v0, v1

    .line 94
    iget-object v3, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mKey:[I

    aput p1, v3, v1

    .line 95
    aput-object p2, v0, v1

    return-object v2

    .line 98
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mKey:[I

    aput p1, v1, v0

    .line 99
    iget-object p1, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 100
    iput v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mCount:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 134
    iget v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mCount:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture$SmallCache;->mValue:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
