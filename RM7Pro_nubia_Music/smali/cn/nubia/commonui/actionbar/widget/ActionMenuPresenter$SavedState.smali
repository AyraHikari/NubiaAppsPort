.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
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
            "Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 574
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState$1;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState$1;-><init>()V

    sput-object v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;->a:I

    .line 562
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    return-void
.end method
