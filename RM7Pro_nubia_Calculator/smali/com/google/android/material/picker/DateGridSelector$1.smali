.class final Lcom/google/android/material/picker/DateGridSelector$1;
.super Ljava/lang/Object;
.source "DateGridSelector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DateGridSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/picker/DateGridSelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/DateGridSelector;
    .locals 0

    .line 88
    new-instance p0, Lcom/google/android/material/picker/DateGridSelector;

    invoke-direct {p0}, Lcom/google/android/material/picker/DateGridSelector;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lcom/google/android/material/picker/DateGridSelector;->access$002(Lcom/google/android/material/picker/DateGridSelector;Ljava/util/Calendar;)Ljava/util/Calendar;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DateGridSelector$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/DateGridSelector;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/material/picker/DateGridSelector;
    .locals 0

    .line 95
    new-array p0, p1, [Lcom/google/android/material/picker/DateGridSelector;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DateGridSelector$1;->newArray(I)[Lcom/google/android/material/picker/DateGridSelector;

    move-result-object p0

    return-object p0
.end method
