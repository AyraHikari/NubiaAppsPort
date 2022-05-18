.class public Lcn/nubia/deftmachanism/DeftEvent;
.super Ljava/lang/Object;
.source "DeftEvent.java"


# static fields
.field public static final DEFT_NATIVE_EVENT_BASE:I = 0x64

.field public static final DEFT_NATIVE_EVENT_MAX:I = 0x3e7

.field public static final DEFT_NATIVE_EVENT_START_CONTROL:I = 0x65

.field public static final DEFT_USER_EVENT_BASE:I = 0xbb8


# instance fields
.field public mEvtId:I

.field public mFromCtx:Landroid/content/Context;

.field public mParam1:I

.field public mParam2:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;II)V
    .locals 1
    .param p1, "evtId"    # I
    .param p2, "fromCtx"    # Landroid/content/Context;
    .param p3, "param1"    # I
    .param p4, "param2"    # I

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcn/nubia/deftmachanism/DeftEvent;->mEvtId:I

    .line 21
    iput v0, p0, Lcn/nubia/deftmachanism/DeftEvent;->mParam1:I

    .line 22
    iput v0, p0, Lcn/nubia/deftmachanism/DeftEvent;->mParam2:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftEvent;->mFromCtx:Landroid/content/Context;

    .line 14
    iput p1, p0, Lcn/nubia/deftmachanism/DeftEvent;->mEvtId:I

    .line 15
    iput-object p2, p0, Lcn/nubia/deftmachanism/DeftEvent;->mFromCtx:Landroid/content/Context;

    .line 16
    iput p3, p0, Lcn/nubia/deftmachanism/DeftEvent;->mParam1:I

    .line 17
    iput p4, p0, Lcn/nubia/deftmachanism/DeftEvent;->mParam2:I

    .line 18
    return-void
.end method
