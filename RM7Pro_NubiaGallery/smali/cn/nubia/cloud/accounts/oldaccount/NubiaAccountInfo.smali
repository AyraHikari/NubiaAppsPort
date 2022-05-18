.class public Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;
.super Ljava/lang/Object;
.source "NubiaAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_HEAD_IMG:Ljava/lang/String; = "key_nubia_account_head_image"

.field public static final KEY_MY_CLOUD_SPACE:Ljava/lang/String; = "key_my_cloud_space"


# instance fields
.field private mHeadImage:Landroid/graphics/Bitmap;

.field private final mKeyValueBundle:Landroid/os/Bundle;

.field private mTokenId:Ljava/lang/String;

.field private mTokenKey:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getmHeadImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v1, "key_nubia_account_head_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget-object p2, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcn/nubia/cloud/accounts/oldaccount/NubiaAccountInfo;->mTokenKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
