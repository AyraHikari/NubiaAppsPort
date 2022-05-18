.class public Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
.super Ljava/lang/Object;
.source "QuicktimeTextTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Line"
.end annotation


# instance fields
.field from:J

.field text:Ljava/lang/String;

.field to:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    .line 138
    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    .line 139
    iput-object p5, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    return-wide v0
.end method
