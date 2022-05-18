.class final Landroid/support/v7/widget/SearchView$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/v7/widget/SearchView$o;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/widget/SearchView$o;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/SearchView$o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/SearchView$o;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/widget/SearchView$o;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/SearchView$o;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/SearchView$o;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public c(I)[Landroid/support/v7/widget/SearchView$o;
    .locals 0

    .line 1
    new-array p1, p1, [Landroid/support/v7/widget/SearchView$o;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView$o$a;->a(Landroid/os/Parcel;)Landroid/support/v7/widget/SearchView$o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/SearchView$o$a;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/widget/SearchView$o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView$o$a;->c(I)[Landroid/support/v7/widget/SearchView$o;

    move-result-object p1

    return-object p1
.end method
