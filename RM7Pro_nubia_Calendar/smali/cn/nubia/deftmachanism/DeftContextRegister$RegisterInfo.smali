.class Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;
.super Ljava/lang/Object;
.source "DeftContextRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deftmachanism/DeftContextRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterInfo"
.end annotation


# instance fields
.field public m_id:I

.field final synthetic this$0:Lcn/nubia/deftmachanism/DeftContextRegister;


# direct methods
.method private constructor <init>(Lcn/nubia/deftmachanism/DeftContextRegister;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;->this$0:Lcn/nubia/deftmachanism/DeftContextRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;->m_id:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/deftmachanism/DeftContextRegister;Lcn/nubia/deftmachanism/DeftContextRegister$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/deftmachanism/DeftContextRegister;
    .param p2, "x1"    # Lcn/nubia/deftmachanism/DeftContextRegister$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;-><init>(Lcn/nubia/deftmachanism/DeftContextRegister;)V

    return-void
.end method
