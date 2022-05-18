.class Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1897
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1881
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->a:I

    .line 1883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->b:Z

    .line 1884
    return-void

    .line 1883
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1887
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1888
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1892
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1893
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    return-void

    .line 1894
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
