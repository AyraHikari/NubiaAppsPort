.class public Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
.super Ljava/lang/Object;
.source "BackupEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;

.field private iconResId:I

.field private id:Ljava/lang/String;

.field private itemCount:I

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry$1;

    invoke-direct {v0}, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry$1;-><init>()V

    sput-object v0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 6
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->desc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->itemCount:I

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->iconResId:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->iconResId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->itemCount:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->desc:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 50
    iput p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->iconResId:I

    .line 51
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->id:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    .line 34
    iput p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->itemCount:I

    .line 35
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->packageName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->itemCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcn/nubia/databackup/newsolution/aidl/bean/BackupEntry;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
