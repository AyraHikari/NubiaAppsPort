.class final Landroidx/fragment/app/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/fragment/app/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/fragment/app/k;
    .locals 1

    .line 62
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0, p1}, Landroidx/fragment/app/k;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroidx/fragment/app/k;
    .locals 0

    .line 67
    new-array p1, p1, [Landroidx/fragment/app/k;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/fragment/app/k$1;->a(Landroid/os/Parcel;)Landroidx/fragment/app/k;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/fragment/app/k$1;->a(I)[Landroidx/fragment/app/k;

    move-result-object p1

    return-object p1
.end method
