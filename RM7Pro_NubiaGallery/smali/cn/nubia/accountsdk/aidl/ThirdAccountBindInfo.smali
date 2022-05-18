.class public Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;
.super Ljava/lang/Object;
.source "ThirdAccountBindInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsQQBind:I

.field private mIsWBBind:I

.field private mIsWXBind:I

.field private mQQHead:Ljava/lang/String;

.field private mQQId:Ljava/lang/String;

.field private mQQNickName:Ljava/lang/String;

.field private mWBHead:Ljava/lang/String;

.field private mWBId:Ljava/lang/String;

.field private mWBNickName:Ljava/lang/String;

.field private mWXHead:Ljava/lang/String;

.field private mWXId:Ljava/lang/String;

.field private mWXNickName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo$1;

    invoke-direct {v0}, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    .line 9
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    .line 10
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    .line 9
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    .line 10
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    .line 29
    iput p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    .line 30
    iput p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    .line 31
    iput p3, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    .line 32
    iput-object p4, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    .line 38
    iput-object p10, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    .line 39
    iput-object p11, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    .line 40
    iput-object p12, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    .line 9
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    .line 10
    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    .line 152
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsQQBind()I
    .locals 1

    .line 44
    iget v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    return v0
.end method

.method public getIsWBBind()I
    .locals 1

    .line 52
    iget v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    return v0
.end method

.method public getIsWXBind()I
    .locals 1

    .line 60
    iget v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    return v0
.end method

.method public getQQHead()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    return-object v0
.end method

.method public getQQId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    return-object v0
.end method

.method public getQQNickName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getWBHead()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    return-object v0
.end method

.method public getWBId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    return-object v0
.end method

.method public getWBNickName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getWXHead()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    return-object v0
.end method

.method public getWXId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    return-object v0
.end method

.method public getWXNickName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    return-object v0
.end method

.method public setIsQQBind(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    return-void
.end method

.method public setIsWBBind(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    return-void
.end method

.method public setIsWXBind(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    return-void
.end method

.method public setQQHead(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    return-void
.end method

.method public setQQId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    return-void
.end method

.method public setQQNickName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    return-void
.end method

.method public setWBHead(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    return-void
.end method

.method public setWBId(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    return-void
.end method

.method public setWBNickName(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    return-void
.end method

.method public setWXHead(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    return-void
.end method

.method public setWXId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    return-void
.end method

.method public setWXNickName(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThirdAccountBindInfo [mIsQQBind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsWBBind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsWXBind="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQQNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWBNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWXNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQQId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWBId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWXId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQQHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWBHead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWXHead="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 177
    iget p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsQQBind:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWBBind:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mIsWXBind:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mQQHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWBHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/ThirdAccountBindInfo;->mWXHead:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
