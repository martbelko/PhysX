project "FastXML"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"source/fastxml/include/PsFastXml.h",
		"source/fastxml/src/PsFastXml.cpp"
	}

	includedirs
	{
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/fastxml/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "LowLevel"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"source/lowlevel/api/**.h",
		"source/lowlevel/api/**.cpp",
		"source/lowlevel/common/**.h",
		"source/lowlevel/common/**.cpp",
		"source/lowlevel/software/**.h",
		"source/lowlevel/software/**.cpp"
	}

	includedirs
	{
		"source/Common/src/windows",
		"source/LowLevel/software/include/windows",
		"source/LowLevelDynamics/include/windows",
		"source/LowLevel/common/include/pipeline/windows",
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/common/include",
		"source/common/src",
		"source/physxgpu/include",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/sweep",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"source/geomutils/src/ccd",
		"source/lowlevel/api/include",
		"source/lowlevel/common/include",
		"source/lowlevel/common/include/collision",
		"source/lowlevel/common/include/pipeline",
		"source/lowlevel/common/include/utils",
		"source/lowlevel/software/include",
		"source/lowleveldynamics/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "LowLevelAABB"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"source/lowlevelaabb/**.h",
		"source/lowlevelaabb/**.cpp"
	}

	includedirs
	{
		"source/Common/src/windows",
		"source/LowLevelAABB/windows/include",
		"source/GpuBroadPhase/include",
		"source/GpuBroadPhase/src",
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/common/include",
		"source/common/src",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/lowlevel/api/include",
		"source/lowlevel/common/include/utils",
		"source/lowlevel/common/include/pipeline",
		"source/lowlevelaabb/include",
		"source/lowlevelaabb/src"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "LowLevelDynamics"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"source/lowleveldynamics/**.h",
		"source/lowleveldynamics/**.cpp"
	}

	includedirs
	{
		"source/common/src/windows",
		"source/lowlevel/software/include/windows",
		"source/lowleveldynamics/include/windows",
		"source/lowlevel/common/include/pipeline/windows",
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/common/src",
		"source/geomutils/src/contact",
		"source/lowlevel/api/include",
		"source/lowlevel/common/include",
		"source/lowlevel/common/include/pipeline",
		"source/lowlevel/common/include/utils",
		"source/lowlevel/software/include",
		"source/lowleveldynamics/include",
		"source/lowleveldynamics/src",
		"source/physxgpu/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXFoundation"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"include/PxFoundation.h",
		"include/foundation/**.h",
		"source/compiler/resource_x64/PhysXFoundation.rc",
		"../pxshared/include/foundation/*.h",
		"../pxshared/include/foundation/windows/**.h",
		"source/foundation/include/*.h",
		"source/foundation/include/windows/**.h",
		"source/foundation/src/*.cpp",
		"source/foundation/src/windows/**.cpp"
	}

	includedirs
	{
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/foundation/include/windows"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXCharacterKinematic"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	links { "PhysXFoundation" }

	files
	{
		"include/characterkinematic/**.h",
		"source/physxcharacterkinematic/src/**.cpp"
	}

	includedirs
	{
		"include",
		"source/common/include",
		"source/common/src",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"../pxshared/include",
		"source/foundation/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXPvdSDK"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	links { "PhysXFoundation" }

	files
	{
		"source/filebuf/include/**.h",
		"source/filebuf/include/**.inl",
		"include/pvd/**.h",
		"source/pvd/**.h",
		"source/pvd/**.cpp"
	}

	includedirs
	{
		"include",
		"source/pvd/include",
		"source/filebuf/include",
		"../pxshared/include",
		"source/foundation/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXTask"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"include/task/**.h",
		"source/task/src/**.cpp"
	}

	includedirs
	{
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/cudamanager/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXVehicle"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	links
	{
		"PhysXFoundation",
		"PhysXPvdSDK"
	}

	files
	{
		"include/vehicle/**.h",
		"source/physxvehicle/src/**.h",
		"source/physxvehicle/src/**.cpp"
	}

	includedirs
	{
		"include",
		"source/common/include",
		"source/common/src",
		"source/physxvehicle/src",
		"source/physxvehicle/src/physxmetadata/include",
		"source/physxmetadata/extensions/include",
		"source/physxmetadata/core/include",
		"source/physxextensions/src/serialization/Xml",
		"source/pvdsdk/src",
		"source/pvd/include",
		"../pxshared/include",
		"source/foundation/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "SceneQuery"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"source/scenequery/**.h",
		"source/scenequery/**.cpp"
	}

	includedirs
	{
		"source/Common/src/windows",
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/common/include",
		"source/common/src",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/sweep",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"source/geomutils/src/ccd",
		"source/lowlevel/api/include",
		"source/scenequery/include",
		"source/simulationcontroller/include",
		"source/physx/src",
		"source/physx/src/buffering",
		"source/pvd/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "SimulationController"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	files
	{
		"source/simulationcontroller/**.h",
		"source/simulationcontroller/**.cpp"
	}

	includedirs
	{
		"source/Common/src/windows",
		"source/LowLevel/windows/include",
		"include",
		"../pxshared/include",
		"source/foundation/include",
		"source/common/include",
		"source/common/src",
		"source/physxgpu/include",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/sweep",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"source/geomutils/src/ccd",
		"source/simulationcontroller/include",
		"source/simulationcontroller/src",
		"source/lowlevel/api/include",
		"source/lowlevel/common/include",
		"source/lowlevel/common/include/collision",
		"source/lowlevel/common/include/pipeline",
		"source/lowlevel/common/include/utils",
		"source/lowlevel/software/include",
		"source/lowleveldynamics/include",
		"source/lowlevelaabb/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXCommon"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	links
	{
		"PhysXFoundation",
	}

	files
	{
		"source/common/**.h",
		"source/common/**.cpp",
		"source/geomutils/**.h",
		"source/geomutils/**.cpp",
		"include/geomutils/**.h"
	}

	includedirs
	{
		"source/common/src/windows",
		"include",
		"source/common/include",
		"source/common/src",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/sweep",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"source/geomutils/src/ccd",
		"source/physxgpu/include",
		"../pxshared/include",
		"source/foundation/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysX"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	links
	{
		"LowLevel",
		"LowLevelAABB",
		"LowLevelDynamics",
		"PhysXCommon",
		"PhysXFoundation",
		"PhysXPvdSDK",
		"PhysXTask",
		"SceneQuery",
		"SimulationController"
	}

	files
	{
		"include/*.h",
		"include/collision/**.h",
		"include/common/**.h",
		"include/cudamanager/**.h",
		"include/gpu/**.h",
		"include/pvd/PxPvdSceneClient.h",
		"source/physxmetadata/core/**.h",
		"source/physxmetadata/core/**.cpp",
		"source/compiler/resource_x64/PhysX.rc",
		"source/compiler/resource_x64/resource.h",
		"source/physx/src/**.h",
		"source/physx/src/**.cpp",
		"source/immediatemode/src/**.cpp"
	}

	excludes
	{
		"source/physx/src/device/linux/**.cpp"
	}

	includedirs
	{
		"include",
		"source/common/include",
		"source/common/src",
		"source/physx/src",
		"source/physx/src/device",
		"source/physx/src/buffering",
		"source/physxgpu/include",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/sweep",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"source/geomutils/src/ccd",
		"source/lowlevel/api/include",
		"source/lowlevel/software/include",
		"source/lowlevel/common/include/pipeline",
		"source/lowlevelaabb/include",
		"source/lowleveldynamics/include",
		"source/simulationcontroller/include",
		"source/simulationcontroller/src",
		"source/physxcooking/src",
		"source/physxcooking/src/mesh",
		"source/physxcooking/src/convex",
		"source/scenequery/include",
		"source/physxmetadata/core/include",
		"source/immediatemode/include",
		"source/pvd/include",
		"../pxshared/include",
		"source/foundation/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}

project "PhysXExtensions"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	characterset("MBCS")

	links
	{
		"FastXML",
		"PhysX",
		"PhysXCommon",
		"PhysXFoundation",
		"PhysXPvdSDK"
	}

	files
	{
		"include/extensions/**.h",
		"source/physxextensions/src/serialization/**.h",
		"source/physxextensions/src/serialization/**.cpp",
		"source/physxextensions/src/**.h",
		"source/physxextensions/src/**.cpp"
	}

	includedirs
	{
		"source/Common/src/windows",
		"include",
		"source/common/include",
		"source/common/src",
		"source/geomutils/include",
		"source/geomutils/src",
		"source/geomutils/src/contact",
		"source/geomutils/src/common",
		"source/geomutils/src/convex",
		"source/geomutils/src/distance",
		"source/geomutils/src/sweep",
		"source/geomutils/src/gjk",
		"source/geomutils/src/intersection",
		"source/geomutils/src/mesh",
		"source/geomutils/src/hf",
		"source/geomutils/src/pcm",
		"source/physxmetadata/core/include",
		"source/physxmetadata/extensions/include",
		"source/physxextensions/src",
		"source/physxextensions/src/serialization/Xml",
		"source/physxextensions/src/serialization/Binary",
		"source/physxextensions/src/serialization/File",
		"source/pvdsdk/src",
		"source/physx/src",
		"source/pvd/include",
		"source/fastxml/include",
		"../pxshared/include",
		"source/foundation/include"
	}

	defines
	{
		"PX_PHYSX_STATIC_LIB",
		"_CRT_SECURE_NO_DEPRECATE",
		"_CRT_NONSTDC_NO_DEPRECATE",
		"_WINSOCK_DEPRECATED_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		defines
		{
			"PX_DEBUG=1",
			"PX_CHECKED=1",
			"PX_NVTX=0",
			"PX_SUPPORT_PVD=1"
		}
	filter "configurations:Release"
		runtime "Release"
		optimize "Full"
		defines
		{
			"_CRT_SECURE_NO_DEPRECATE",
			"_CRT_NONSTDC_NO_DEPRECATE",
			"_WINSOCK_DEPRECATED_NO_WARNINGS",
			"PX_SUPPORT_PVD=0",
		}
