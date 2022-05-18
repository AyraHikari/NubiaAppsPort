.class public abstract Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# instance fields
.field private enabled:Z

.field private inMovie:Z

.field private inPoster:Z

.field private inPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->enabled:Z

    .line 3
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inMovie:Z

    .line 4
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inPreview:Z

    .line 5
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inPoster:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->enabled:Z

    return v0
.end method

.method public isInMovie()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inMovie:Z

    return v0
.end method

.method public isInPoster()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inPoster:Z

    return v0
.end method

.method public isInPreview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inPreview:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->enabled:Z

    return-void
.end method

.method public setInMovie(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inMovie:Z

    return-void
.end method

.method public setInPoster(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inPoster:Z

    return-void
.end method

.method public setInPreview(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/AbstractTrack;->inPreview:Z

    return-void
.end method
