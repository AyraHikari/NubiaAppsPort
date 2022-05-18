.class final Lcn/nubia/commonui/widget/TimePickerView$SaveState$1;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/TimePickerView$SaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/commonui/widget/TimePickerView$SaveState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/nubia/commonui/widget/TimePickerView$SaveState;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/widget/TimePickerView$SaveState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcn/nubia/commonui/widget/TimePickerView$SaveState;
    .locals 1

    .prologue
    .line 171
    new-array v0, p1, [Lcn/nubia/commonui/widget/TimePickerView$SaveState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/TimePickerView$SaveState$1;->a(Landroid/os/Parcel;)Lcn/nubia/commonui/widget/TimePickerView$SaveState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/TimePickerView$SaveState$1;->a(I)[Lcn/nubia/commonui/widget/TimePickerView$SaveState;

    move-result-object v0

    return-object v0
.end method
