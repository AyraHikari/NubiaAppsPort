.class Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "DateAndTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHour:I

.field final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState$1;

    invoke-direct {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState$1;-><init>()V

    sput-object v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mHour:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mMinute:I

    .line 191
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 195
    iput p2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mHour:I

    .line 196
    iput p3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mMinute:I

    .line 197
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
