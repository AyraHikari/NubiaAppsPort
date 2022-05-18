.class public Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;
.super Ljava/lang/Object;
.source "TextTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl;
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    .line 141
    iput-wide p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    .line 142
    iput-object p5, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->from:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/TextTrackImpl$Line;->to:J

    return-wide v0
.end method
