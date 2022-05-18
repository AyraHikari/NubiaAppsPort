.class Lcn/nubia/commonui/widget/TimePickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/TimePickerView;
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
            "Lcn/nubia/commonui/widget/TimePickerView$SaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcn/nubia/commonui/widget/TimePickerView$SaveState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/widget/TimePickerView$SaveState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->a:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->b:I

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 152
    iput p2, p0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->a:I

    .line 153
    iput p3, p0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->b:I

    .line 154
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 159
    iget v0, p0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcn/nubia/commonui/widget/TimePickerView$SaveState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method
