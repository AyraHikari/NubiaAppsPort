.class Lcn/nubia/commonui/widget/DatePickerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/DatePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/commonui/widget/DatePickerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/widget/DatePickerView$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->a:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->b:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->c:I

    .line 412
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 402
    iput p2, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->a:I

    .line 403
    iput p3, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->b:I

    .line 404
    iput p4, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->c:I

    .line 405
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 417
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    return-void
.end method
