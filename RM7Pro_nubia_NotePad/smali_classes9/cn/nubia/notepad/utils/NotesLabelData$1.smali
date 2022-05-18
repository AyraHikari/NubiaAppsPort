.class final Lcn/nubia/notepad/utils/NotesLabelData$1;
.super Ljava/lang/Object;
.source "NotesLabelData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/utils/NotesLabelData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/notepad/utils/NotesLabelData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/notepad/utils/NotesLabelData;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 55
    new-instance v0, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/NotesLabelData;-><init>()V

    .line 56
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->access$002(Lcn/nubia/notepad/utils/NotesLabelData;I)I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->access$102(Lcn/nubia/notepad/utils/NotesLabelData;I)I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/NotesLabelData;->access$202(Lcn/nubia/notepad/utils/NotesLabelData;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/utils/NotesLabelData$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/notepad/utils/NotesLabelData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/notepad/utils/NotesLabelData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 65
    new-array v0, p1, [Lcn/nubia/notepad/utils/NotesLabelData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/utils/NotesLabelData$1;->newArray(I)[Lcn/nubia/notepad/utils/NotesLabelData;

    move-result-object v0

    return-object v0
.end method
