.class public Lcom/google/android/material/internal/ParcelableSparseIntArray;
.super Landroid/util/SparseIntArray;
.source "ParcelableSparseIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/internal/ParcelableSparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;

    invoke-direct {v0}, Lcom/google/android/material/internal/ParcelableSparseIntArray$1;-><init>()V

    sput-object v0, Lcom/google/android/material/internal/ParcelableSparseIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, p2, v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->valueAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
