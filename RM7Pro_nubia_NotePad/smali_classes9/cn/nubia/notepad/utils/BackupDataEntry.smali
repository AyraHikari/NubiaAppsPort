.class public Lcn/nubia/notepad/utils/BackupDataEntry;
.super Ljava/lang/Object;
.source "BackupDataEntry.java"


# instance fields
.field private classify:I

.field private contentsData:Ljava/lang/String;

.field private createdDate:J

.field private id:I

.field private isRemind:I

.field private isTop:I

.field private mLabel:Ljava/lang/String;

.field private mSecondTitle:Ljava/lang/String;

.field private mode:I

.field private modifiedDate:J

.field private remindTime:J

.field private resource:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassify()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->classify:I

    return v0
.end method

.method public getContentsData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->contentsData:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->createdDate:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->id:I

    return v0
.end method

.method public getIsRemind()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->isRemind:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->mode:I

    return v0
.end method

.method public getModifiedDate()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->modifiedDate:J

    return-wide v0
.end method

.method public getRemindTime()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->remindTime:J

    return-wide v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getmLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getmSecondTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->mSecondTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->isTop:I

    return v0
.end method

.method public setClassify(I)V
    .locals 0
    .param p1, "classify"    # I

    .prologue
    .line 67
    iput p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->classify:I

    .line 68
    return-void
.end method

.method public setContentsData(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentsData"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->contentsData:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1
    .param p1, "createdDate"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->createdDate:J

    .line 52
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->id:I

    .line 28
    return-void
.end method

.method public setIsRemind(I)V
    .locals 0
    .param p1, "isRemind"    # I

    .prologue
    .line 107
    iput p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->isRemind:I

    .line 108
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 91
    iput p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->mode:I

    .line 92
    return-void
.end method

.method public setModifiedDate(J)V
    .locals 1
    .param p1, "modifiedDate"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->modifiedDate:J

    .line 60
    return-void
.end method

.method public setRemindTime(J)V
    .locals 1
    .param p1, "remindTime"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->remindTime:J

    .line 84
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->resource:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->title:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "isTop"    # I

    .prologue
    .line 99
    iput p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->isTop:I

    .line 100
    return-void
.end method

.method public setmLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLabel"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->mLabel:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setmSecondTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSecondTitle"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/notepad/utils/BackupDataEntry;->mSecondTitle:Ljava/lang/String;

    .line 124
    return-void
.end method
