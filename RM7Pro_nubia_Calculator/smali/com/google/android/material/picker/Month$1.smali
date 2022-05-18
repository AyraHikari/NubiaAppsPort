.class final Lcom/google/android/material/picker/Month$1;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/Month;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/picker/Month;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/Month;
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-static {p0, p1}, Lcom/google/android/material/picker/Month;->create(II)Lcom/google/android/material/picker/Month;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/Month$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/Month;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/material/picker/Month;
    .locals 0

    .line 161
    new-array p0, p1, [Lcom/google/android/material/picker/Month;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/Month$1;->newArray(I)[Lcom/google/android/material/picker/Month;

    move-result-object p0

    return-object p0
.end method
