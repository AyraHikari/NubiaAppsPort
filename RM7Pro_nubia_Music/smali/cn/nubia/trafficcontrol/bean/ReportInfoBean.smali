.class public Lcn/nubia/trafficcontrol/bean/ReportInfoBean;
.super Ljava/lang/Object;
.source "ReportInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/trafficcontrol/bean/ReportInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mBigDataId:Ljava/lang/String;

.field private mId:J

.field private mSendStatus:I

.field private mSeqNumber:I

.field private mSlice:I

.field private mSlicePos:I

.field private mStartTime:J

.field private mValue:Ljava/lang/String;

.field private mValueSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean$1;

    invoke-direct {v0}, Lcn/nubia/trafficcontrol/bean/ReportInfoBean$1;-><init>()V

    sput-object v0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v2, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mId:J

    .line 13
    iput-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    .line 14
    iput-wide v2, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    .line 16
    iput-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    .line 18
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    .line 19
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    .line 20
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    .line 21
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide v2, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mId:J

    .line 13
    iput-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    .line 14
    iput-wide v2, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    .line 16
    iput-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    .line 18
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    .line 19
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    .line 20
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    .line 21
    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mId:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mBigDataId:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBigDataId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mBigDataId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mId:J

    return-wide v0
.end method

.method public getSendStatus()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    return v0
.end method

.method public getSeqNumber()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    return v0
.end method

.method public getSlice()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    return v0
.end method

.method public getSlicePos()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueSize()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setBigDataId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mBigDataId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 57
    iput-wide p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mId:J

    .line 58
    return-void
.end method

.method public setSendStatus(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    .line 134
    return-void
.end method

.method public setSeqNumber(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    .line 124
    return-void
.end method

.method public setSlice(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    .line 104
    return-void
.end method

.method public setSlicePos(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    .line 114
    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    .prologue
    .line 73
    iput-wide p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    .line 74
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setValueSize(I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ReportInfo(AppId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 168
    const-string v1, ",mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 169
    const-string v1, ",mBigDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mBigDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 170
    const-string v1, ",mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 171
    const-string v1, ",mSlice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 172
    const-string v1, ",mSlicePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 173
    const-string v1, ",mSeqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 174
    const-string v1, ",mSendStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 175
    const-string v1, ",mValueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 176
    const-string v1, "   )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-wide v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mBigDataId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSlicePos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSeqNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mSendStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcn/nubia/trafficcontrol/bean/ReportInfoBean;->mValueSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return-void
.end method
