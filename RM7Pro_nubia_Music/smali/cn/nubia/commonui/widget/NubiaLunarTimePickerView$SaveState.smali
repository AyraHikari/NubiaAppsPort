.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "NubiaLunarTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
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
            "Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;",
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
    .line 217
    new-instance v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->a:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->b:I

    .line 201
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 205
    iput p2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->a:I

    .line 206
    iput p3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->b:I

    .line 207
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 212
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return-void
.end method
