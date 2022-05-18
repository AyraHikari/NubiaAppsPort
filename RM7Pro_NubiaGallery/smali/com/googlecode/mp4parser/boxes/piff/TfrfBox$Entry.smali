.class public Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;
.super Ljava/lang/Object;
.source "TfrfBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field fragmentAbsoluteDuration:J

.field fragmentAbsoluteTime:J

.field final synthetic this$0:Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->this$0:Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentAbsoluteDuration()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->fragmentAbsoluteDuration:J

    return-wide v0
.end method

.method public getFragmentAbsoluteTime()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->fragmentAbsoluteTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{fragmentAbsoluteTime="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->fragmentAbsoluteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fragmentAbsoluteDuration="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->fragmentAbsoluteDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
