.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[I

.field e:I

.field f:[I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;",
            ">;"
        }
    .end annotation
.end field

.field h:Z

.field i:Z

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3239
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    .line 3167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 3168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    if-lez v0, :cond_0

    .line 3170
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    .line 3171
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3174
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    if-lez v0, :cond_1

    .line 3176
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    .line 3177
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3179
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    .line 3180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    .line 3181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j:Z

    .line 3183
    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    .line 3184
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3185
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;)V
    .locals 1

    .line 3188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3189
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 3190
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    .line 3191
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    .line 3192
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    .line 3193
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 3194
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    .line 3195
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    .line 3196
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    .line 3197
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j:Z

    .line 3198
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 3202
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    const/4 v1, 0x0

    .line 3203
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    .line 3204
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    .line 3205
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    .line 3206
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 3210
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    const/4 v0, 0x0

    .line 3211
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    const/4 v0, -0x1

    .line 3212
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    .line 3213
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3223
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3224
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3225
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3226
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->c:I

    if-lez p2, :cond_0

    .line 3227
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3229
    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3230
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->e:I

    if-lez p2, :cond_1

    .line 3231
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->f:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3233
    :cond_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3234
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3235
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$d;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
