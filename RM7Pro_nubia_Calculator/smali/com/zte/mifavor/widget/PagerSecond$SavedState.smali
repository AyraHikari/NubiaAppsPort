.class Lcom/zte/mifavor/widget/PagerSecond$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PagerSecond.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/PagerSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zte/mifavor/widget/PagerSecond$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 914
    new-instance v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/PagerSecond$SavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 932
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/mifavor/widget/PagerSecond$1;)V
    .locals 0

    .line 913
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 928
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 938
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    iget p0, p0, Lcom/zte/mifavor/widget/PagerSecond$SavedState;->currentPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
