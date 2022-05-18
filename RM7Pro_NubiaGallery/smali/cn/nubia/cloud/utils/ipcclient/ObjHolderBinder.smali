.class public Lcn/nubia/cloud/utils/ipcclient/ObjHolderBinder;
.super Landroid/os/Binder;
.source "ObjHolderBinder.java"


# instance fields
.field private final mObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 9
    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ObjHolderBinder;->mObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ObjHolderBinder;->mObj:Ljava/lang/Object;

    return-object v0
.end method
