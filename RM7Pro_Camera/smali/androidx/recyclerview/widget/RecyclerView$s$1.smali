.class final Landroidx/recyclerview/widget/RecyclerView$s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/recyclerview/widget/RecyclerView$s;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 2

    .line 12342
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 1

    .line 12337
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 0

    .line 12347
    new-array p1, p1, [Landroidx/recyclerview/widget/RecyclerView$s;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12334
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s$1;->a(Landroid/os/Parcel;)Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 12334
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12334
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$s$1;->a(I)[Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object p1

    return-object p1
.end method
