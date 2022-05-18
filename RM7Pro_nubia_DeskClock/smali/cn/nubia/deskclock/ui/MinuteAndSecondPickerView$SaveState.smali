.class Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "MinuteAndSecondPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveState"
.end annotation


# instance fields
.field final mHour:I

.field final mMinute:I

.field final mSecond:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mHour:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mMinute:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mSecond:I

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 126
    iput p2, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mHour:I

    .line 127
    iput p3, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mMinute:I

    .line 128
    iput p4, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mSecond:I

    .line 129
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    iget v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView$SaveState;->mSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
