.class Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/DatePickerZTE;
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
            "Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 893
    new-instance v0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 921
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedYear:I

    .line 923
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedMonth:I

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/mifavor/widget/DatePickerZTE$1;)V
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .line 911
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 912
    iput p2, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedYear:I

    .line 913
    iput p3, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedMonth:I

    .line 914
    iput p4, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/zte/mifavor/widget/DatePickerZTE$1;)V
    .locals 0

    .line 889
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getSelectedDay()I
    .locals 0

    .line 936
    iget p0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedDay:I

    return p0
.end method

.method public getSelectedMonth()I
    .locals 0

    .line 940
    iget p0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedMonth:I

    return p0
.end method

.method public getSelectedYear()I
    .locals 0

    .line 944
    iget p0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedYear:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 929
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 930
    iget p2, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget p2, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget p0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$SavedState;->mSelectedDay:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
