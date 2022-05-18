.class public Lcn/nubia/notepad/utils/NotesLabelData;
.super Ljava/lang/Object;
.source "NotesLabelData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCount:I

.field private mId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcn/nubia/notepad/utils/NotesLabelData$1;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/NotesLabelData$1;-><init>()V

    sput-object v0, Lcn/nubia/notepad/utils/NotesLabelData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/notepad/utils/NotesLabelData;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesLabelData;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mId:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/notepad/utils/NotesLabelData;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesLabelData;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mCount:I

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/notepad/utils/NotesLabelData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/utils/NotesLabelData;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getmCount()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mCount:I

    return v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mId:I

    return v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setmCount(I)V
    .locals 0
    .param p1, "mCount"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mCount:I

    .line 26
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .param p1, "mId"    # I

    .prologue
    .line 17
    iput p1, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mId:I

    .line 18
    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mTitle:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 45
    iget v0, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcn/nubia/notepad/utils/NotesLabelData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
