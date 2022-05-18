.class public Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field A:I

.field B:Z

.field C:I

.field D:I

.field E:I

.field F:I

.field G:Z

.field H:I

.field I:I

.field J:I

.field K:I

.field a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

.field b:I

.field c:I

.field d:I

.field e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

.field g:Z

.field h:Z

.field i:I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:Z

.field q:I

.field r:I

.field s:F

.field t:F

.field u:Z

.field v:I

.field w:I

.field x:Landroid/net/Uri;

.field y:Landroid/net/Uri;

.field z:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c$a;

    invoke-direct {v0}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c$a;-><init>()V

    sput-object v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->b:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->c:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->d:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->g:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->h:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->i:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->j:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->k:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->l:F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->m:F

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->n:F

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->o:F

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->p:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->q:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->r:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->s:F

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->t:F

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->u:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->v:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->w:I

    .line 27
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->x:Landroid/net/Uri;

    .line 28
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->y:Landroid/net/Uri;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->z:Landroid/graphics/Bitmap$CompressFormat;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->A:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->B:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->C:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->D:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->E:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->F:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->G:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->H:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->I:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->J:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->K:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/video/mediaeditorview/gifmaker/cropview/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->a:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$b;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->e:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->f:Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$d;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 8
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->g:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 13
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->m:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 15
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->n:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 17
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->p:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->s:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 21
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->t:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 22
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->u:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->v:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->x:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 26
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->y:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->z:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 28
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->A:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->B:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->C:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->D:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->E:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->F:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->G:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->H:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->I:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->J:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;->K:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
