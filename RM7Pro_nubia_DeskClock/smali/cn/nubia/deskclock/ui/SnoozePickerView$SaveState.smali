.class Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "SnoozePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/ui/SnoozePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveState"
.end annotation


# instance fields
.field final mInterVal:I

.field final mTimes:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mTimes:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mInterVal:I

    .line 126
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "times"    # I
    .param p3, "interval"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 130
    iput p2, p0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mTimes:I

    .line 131
    iput p3, p0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mInterVal:I

    .line 132
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    iget v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcn/nubia/deskclock/ui/SnoozePickerView$SaveState;->mInterVal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return-void
.end method
