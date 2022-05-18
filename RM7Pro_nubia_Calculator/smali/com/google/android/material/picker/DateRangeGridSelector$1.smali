.class final Lcom/google/android/material/picker/DateRangeGridSelector$1;
.super Ljava/lang/Object;
.source "DateRangeGridSelector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/picker/DateRangeGridSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/picker/DateRangeGridSelector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/DateRangeGridSelector;
    .locals 1

    .line 215
    new-instance p0, Lcom/google/android/material/picker/DateRangeGridSelector;

    invoke-direct {p0}, Lcom/google/android/material/picker/DateRangeGridSelector;-><init>()V

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$002(Lcom/google/android/material/picker/DateRangeGridSelector;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$102(Lcom/google/android/material/picker/DateRangeGridSelector;Ljava/util/Calendar;)Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$202(Lcom/google/android/material/picker/DateRangeGridSelector;Z)Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$302(Lcom/google/android/material/picker/DateRangeGridSelector;I)I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$402(Lcom/google/android/material/picker/DateRangeGridSelector;I)I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$502(Lcom/google/android/material/picker/DateRangeGridSelector;I)I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/picker/DateRangeGridSelector;->access$602(Lcom/google/android/material/picker/DateRangeGridSelector;I)I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DateRangeGridSelector$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/picker/DateRangeGridSelector;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/material/picker/DateRangeGridSelector;
    .locals 0

    .line 228
    new-array p0, p1, [Lcom/google/android/material/picker/DateRangeGridSelector;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/DateRangeGridSelector$1;->newArray(I)[Lcom/google/android/material/picker/DateRangeGridSelector;

    move-result-object p0

    return-object p0
.end method
