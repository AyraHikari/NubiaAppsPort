.class Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TimePickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentItemShowing:I

.field private final mHour:I

.field private final mIs24HourMode:Z

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 853
    new-instance v0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 881
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mHour:I

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mMinute:I

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mIs24HourMode:Z

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mCurrentItemShowing:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/mifavor/widget/TimePickerZTE$1;)V
    .locals 0

    .line 850
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 868
    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIZI)V
    .locals 0

    .line 873
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 874
    iput p2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mHour:I

    .line 875
    iput p3, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mMinute:I

    .line 876
    iput-boolean p4, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mIs24HourMode:Z

    .line 877
    iput p5, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mCurrentItemShowing:I

    return-void
.end method


# virtual methods
.method public getCurrentItemShowing()I
    .locals 0

    .line 901
    iget p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mCurrentItemShowing:I

    return p0
.end method

.method public getHour()I
    .locals 0

    .line 889
    iget p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mHour:I

    return p0
.end method

.method public getMinute()I
    .locals 0

    .line 893
    iget p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mMinute:I

    return p0
.end method

.method public is24HourMode()Z
    .locals 0

    .line 897
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mIs24HourMode:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 906
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 907
    iget p2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mHour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget p2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mMinute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mIs24HourMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget p0, p0, Lcom/zte/mifavor/widget/TimePickerZTE$SavedState;->mCurrentItemShowing:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
