.class public interface abstract Lcn/nubia/cloud/backup/Backup$OnBackupStateChangedListener;
.super Ljava/lang/Object;
.source "Backup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/backup/Backup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBackupStateChangedListener"
.end annotation


# virtual methods
.method public abstract onBackupSizeChanged(I)V
.end method

.method public abstract onBackupStateChanged(I)V
.end method
